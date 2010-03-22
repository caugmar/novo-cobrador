#!/usr/bin/env ruby
                                                              
comeco = "a"
fim = "z"
diretorio = "/mnt/servidor/documentos/Documentos do Escritorio/Situacao dos Clientes"
comeco.upto(fim) do | l |
    begin
        curdir = Dir.new("#{diretorio}/#{l}")
        arquivos = curdir.select { | fname | fname.end_with? ".ods" }
        arquivos.each do | fname |
            comando = "soffice -p \"#{diretorio}/#{l}/#{fname}\""
            puts comando
            `#{comando}`
        end
    rescue SystemCallError
        $stderr.puts "Diretório não existe: #{diretorio}/#{l}"
    end
end

