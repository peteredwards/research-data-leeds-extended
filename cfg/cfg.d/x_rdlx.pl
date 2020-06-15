##### RDL eXtended schema
##### add eprint dataset fields

$c->add_dataset_field(
                      "eprint",
						{
							name => 'collection',
							type => 'compound',
							fields => [
								{
									sub_name => 'name',
									type => 'text',
									allow_null => 1,
								},
								{
									sub_name => 'id',
									type => 'text',
									allow_null => 1,
								},
								{
									sub_name => 'subcollection',
									type => 'text',
									allow_null => 1,
								},
							],
							input_boxes => 4,
						},
						reuse => 1
						);

$c->add_dataset_field(
                      "eprint",
                      {
                       name => 'record_type',
					   type => 'namedset',
                       set_name => "rdlx_record_types",
                      },
                      reuse => 1
                     );