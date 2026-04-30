module AresMUSH
    module ESHTraits
        class TimelineCmd
            include CommandHandler

            attr_accessor :name, :timeline 

            def parse_args
                self.name = cmd.args || enactor_name
            end

            def handle 
                ClassTargetFinder.with_a_character(self.name, client, enactor) do |model|
                    template = BorderedDisplayTemplate.new model.timeline, "#{model.name}'s Timeline"
                    client.emit template.render
                end
            end
        end
    end
end