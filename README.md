# SortCollections

To sort a array that the element is `Hash`

## Installation

Add this line to your application's Gemfile:

    gem 'sort_collections'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sort_collections

## Usage

```
# init sort data
hash_array = [{"created_at"=>"Fri, 31 May 2013 00:26:53 HKT +08:00",
              "email"=>"peop@example.edu",
              "id"=>3,
              "updated_at"=>"Fri, 31 May 2013 00:27:21 HKT +08:00"},
             {"created_at"=>"Thu, 30 May 2013 18:53:12 HKT +08:00",
              "email"=>"coco@example.com",
              "id"=>2,
              "updated_at"=>"Sat, 06 Jul 2013 17:25:13 HKT +08:00"},
             {"created_at"=>"Sun, 16 Jun 2013 11:23:42 HKT +08:00",
              "email"=>"lele@example.com",
              "id"=>5,
              "updated_at"=>"Tue, 23 Jul 2013 15:44:46 HKT +08:00"},
             {"created_at"=>"Fri, 31 May 2013 11:05:24 HKT +08:00",
              "email"=>"bebe@example.com",
              "id"=>4,
              "updated_at"=>"Tue, 06 Aug 2013 13:19:09 HKT +08:00"},
              {"created_at"=>"Fri, 31 May 2013 11:05:24 HKT +08:00",
              "email"=>"bebe@example.com",
              "id"=>4,
              "updated_at"=>"Tue, 06 Aug 2013 13:19:09 HKT +08:00"},
             {"created_at"=>"Thu, 30 May 2013 11:19:11 HKT +08:00",
              "email"=>"admin@example.com",
              "id"=>1,
              "updated_at"=>"Wed, 11 Sep 2013 15:13:25 HKT +08:00"}]

# default: order_type: "asc", order_with: "id"
hash_array.order_collection

# assign order_with, e.g.: "email"
hash_array.order_collection(order_with: "email")

# ==> Result:

[{"created_at"=>"Thu, 30 May 2013 11:19:11 HKT +08:00",
  "email"=>"admin@example.com",
  "updated_at"=>"Wed, 11 Sep 2013 15:13:25 HKT +08:00"},
 {"created_at"=>"Fri, 31 May 2013 11:05:24 HKT +08:00",
  "email"=>"bebe@example.com",
  "updated_at"=>"Tue, 06 Aug 2013 13:19:09 HKT +08:00"},
 {"created_at"=>"Fri, 31 May 2013 11:05:24 HKT +08:00",
  "email"=>"bebe@example.com",
  "updated_at"=>"Tue, 06 Aug 2013 13:19:09 HKT +08:00"},
 {"created_at"=>"Thu, 30 May 2013 18:53:12 HKT +08:00",
  "email"=>"coco@example.com",
  "updated_at"=>"Sat, 06 Jul 2013 17:25:13 HKT +08:00"},
 {"created_at"=>"Sun, 16 Jun 2013 11:23:42 HKT +08:00",
  "email"=>"lele@example.com",
  "updated_at"=>"Tue, 23 Jul 2013 15:44:46 HKT +08:00"},
 {"created_at"=>"Fri, 31 May 2013 00:26:53 HKT +08:00",
  "email"=>"peop@example.edu",
  "updated_at"=>"Fri, 31 May 2013 00:27:21 HKT +08:00"}]

```

You can assign any key word what you want!

## Todo

1. sort sort a array that the element is `Object`

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
