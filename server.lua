RegisterServerEvent('CL-Antidump:start')
AddEventHandler('CL-Antidump:start', function()
    sendClientCode(source)
end)

function sendClientCode(source)
    local luaCode = [[
        print("Hello World!")
    ]]

    local jsCode = [[
        <style>
            .box {
                background-color: white;
                width: 100px;
                height: 100px;
            }
        </style>
        
        <script>
            console.log('Hello World!');
        </script>

        <div class="box"></div>
    ]]

    TriggerClientEvent('CL-Antidump:lua', source, luaCode)
    TriggerClientEvent('CL-Antidump:js', source, jsCode)
end
