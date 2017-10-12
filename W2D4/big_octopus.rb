def sluggish(arr)
  arr.length.times do |i|
    max = true

    arr.length.times do |j|
      next if arr[i].length = arr[j].length
      max = false if arr[j].length > arr[i].length
    end

    return arr[i] if max
  end
end

def dominant(arr)
  sorted = merge_sort(arr) do |word1, word2|
    word1.length <=> word2.length
  end

  sorted.last
end

def merge_sort(arr, &prc)
  return self if arr.length < 2

  prc ||= Proc.new { |n1, n2| n1 <=> n2 }

  mid = arr.size / 2
  sorted_left = merge_sort(arr.take(mid), &prc)
  sorted_right = merge_sort(arr.drop(mid), &prc)

  merge(sorted_left, sorted_right, &prc)
end

def merge(left, right, &prc)
  merged = []

  until left.empty? || right.empty?
    case prc.call(left.first, right.first)
    when -1
      merged << left.shift
    when 0
      merged << left.shift
    when 1
      merged << right.shift
    end
  end

  merged + left + right
end

def clever(arr)
  arr.reduce { |longest, word| word.length > longest.length ? word : longest }
end

def slow_dance(tile, tiles_array)
  tiles_array.each_with_index { |cur_tile, i| return i if cur_tile == tile }
end

tiles = {
  "up" => 0,
  "right-up" => 1,
  "right" => 2,
  "right-down" => 3,
  "down" => 4,
  "left-down" => 5,
  "left" => 6,
  "left-up" => 7
}

def constant_dance(direction, tiles)
  tiles[direction]
end
