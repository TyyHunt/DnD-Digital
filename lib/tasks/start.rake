#task :start do
# exec 'foreman start -p 3000'

#  desc 'Start production server'
#   task :production do
#     exec 'NPM_CONFIG_PRODUCTION=true npm run postinstall && foreman start'
#   end
#end

 task :start do
   exec 'foreman start -p 3006'
 end

 desc 'Start production server'
 task :production do
   exec 'NPM_CONFIG_PRODUCTION=true npm run postinstall && foreman start -p 3006'
 end


desc 'Start development server'