module VagrantPlugins
  module Vmpooler
    module Action
      class IsCreated
        def initialize(app, env)
          @app = app
        end

        def call(env)
          env[:result] = env[:machine].state.id == :created
          @app.call(env)
        end
      end
    end
  end
end
