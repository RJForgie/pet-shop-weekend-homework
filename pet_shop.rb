# Test 1
def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

# Test 2
def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

# Test 3 / 4
def add_or_remove_cash(pet_shop, added)
  return pet_shop[:admin][:total_cash] += added
end

# # # Test Not Needed
# def add_or_remove_cash(pet_shop, removed)
#   return pet_shop[:admin][:total_cash] += removed
# end

# Test 5
def pets_sold(number_of_pets_sold)
  return number_of_pets_sold[:admin][:pets_sold]
end

# Test 6
def increase_pets_sold(pet_shop, sold_pets)
  return pet_shop[:admin][:pets_sold] += sold_pets
end

# Test 7
def stock_count(counted_animals)
  return counted_animals[:pets].count
end

# Test 8 / 9
def pets_by_breed(pet_shop, breed)
  pets = []
  for breed_of_pet in pet_shop[:pets] do
    if breed_of_pet[:breed] == breed
      pets.push(breed)
    end
  end
  return pets
end

# Test 10
def find_pet_by_name(pet_shop, name)
  for name_of_pet in pet_shop[:pets] do
    if name_of_pet[:name] == name
     return name_of_pet
    end
  end
  return nil
end

# Test 11
def remove_pet_by_name(pet_shop, name_to_remove)
  for name_of_pet in pet_shop[:pets] do
    if name_of_pet[:name] == name_to_remove
      pet_shop[:pets].delete(name_of_pet)
    end
  end
end

# Test 12
def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

# Test 13
def customer_pet_count(customers)
  return customers[:pets].count
end

# Test 14
def add_pet_to_customer(customers, new_pet)
  customers[:pets].push(new_pet)
end

# Test 15
def customer_can_afford_pet(customer, new_pet)
  customer[:cash] >= new_pet[:price]
end

# Test 16

def sell_pet_to_customer(pet_shop, pet, customer)
  if pet == nil || customer[:cash] < pet[:price] then puts "Sorry"
  elsif
      customer[:pets].push(pet)
      pet_shop[:admin][:pets_sold] += 1
      pet_shop[:admin][:total_cash] += pet[:price]
  end
end
