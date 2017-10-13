class LRUCache
  def initialize(max_num)
    @max_num = max_num
    @cache = []
  end

  def count
    @cache.count
  end

  def add(el)
    delete(el)
    shift if count == @max_num
    @cache.push(el)
  end

  def show
    p @cache
  end

  private

  def shift
    @cache.shift
  end

  def delete(el)
    @cache.delete(el)
  end
end
