-- SPDX-License-Identifier: GPL-3.0-only
local reloaded = false

script.on_init(function()
  local surface = game.surfaces[1]
  local tiles = {}
  for x = -8, 104 do
    for y = -8, 24 do
      tiles[#tiles + 1] = {name = "grass-1", position = {x, y}}
    end
  end
  surface.set_tiles(tiles)
  storage.test_chests = {}
  local count = 0
  local variants = {g = false, s = "storage", b = "buffer", r = "requester",
                    pp = "passive-provider", ap = "active-provider"}
  for row, size in ipairs({"medium", "big"}) do
    local expected = size == "medium" and 200 or 2000
    local column = 0
    for suffix, mode in pairs(variants) do
      local name = "k-" .. size .. "-" .. suffix
      local chest = surface.create_entity{
        name = name, position = {column * 16, row * 8}, force = "player"
      }
      assert(chest and chest.valid, "Cannot create " .. name)
      storage.test_chests[#storage.test_chests + 1] = {entity = chest, slots = expected}
      local inventory = chest.get_inventory(defines.inventory.chest)
      assert(#inventory == expected, name .. " inventory size")
      assert(chest.insert{name = "iron-plate", count = 100} == 100, name .. " insert")
      assert(inventory.get_item_count("iron-plate") == 100, name .. " contents")
      assert(chest.get_wire_connector(defines.wire_connector_id.circuit_red, true),
             name .. " missing red connector")
      assert(chest.get_wire_connector(defines.wire_connector_id.circuit_green, true),
             name .. " missing green connector")
      if mode then
        assert(chest.prototype.logistic_mode == mode, name .. " logistic mode")
      end
      if suffix == "b" or suffix == "r" then
        local trash = chest.get_inventory(defines.inventory.logistic_container_trash)
        assert(trash and #trash == (size == "medium" and 20 or 40), name .. " trash")
      end
      assert(prototypes.item[name].place_result.name == name, name .. " item mapping")
      assert(game.forces.player.recipes[name], name .. " missing recipe")
      column = column + 1
      count = count + 1
    end
  end
  assert(count == 12)
  local force = game.forces.player
  for _, name in ipairs({"k1v-chest", "k1v-simple-logistic-chest", "k1v-advanced-logistic-chest"}) do
    force.technologies[name].researched = true
    for _, effect in pairs(force.technologies[name].prototype.effects) do
      if effect.type == "unlock-recipe" then
        assert(force.recipes[effect.recipe].enabled, effect.recipe .. " research unlock")
      end
    end
  end
  helpers.write_file("compatibility-result.txt", "PASS: 12 chest variants, inventories, contents, circuit connectors, logistic modes, trash inventories, items, recipes and research unlocks.\n")
end)

script.on_load(function()
  reloaded = true
end)

script.on_event(defines.events.on_tick, function()
  if not reloaded or storage.reload_verified then return end
  assert(#storage.test_chests == 12, "Saved chest list missing")
  for _, entry in ipairs(storage.test_chests) do
    assert(entry.entity.valid, "Chest missing after reload")
    local inventory = entry.entity.get_inventory(defines.inventory.chest)
    assert(#inventory == entry.slots, "Inventory size changed after reload")
    assert(inventory.get_item_count("iron-plate") == 100, "Contents lost after reload")
  end
  storage.reload_verified = true
  helpers.write_file("reload-result.txt", "PASS: All 12 chests and their contents survived save/reload.\n")
end)
