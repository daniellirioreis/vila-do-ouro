class TypeMessage < EnumerateIt::Base
  associate_values :notification                         => 0,
                   :warning                              => 1,
                   :convocation                          => 2,
                   :accountability                       => 3
                   
end