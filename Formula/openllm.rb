# Generated by tools/update-brew-tap.py. DO NOT EDIT!
# Please refers to the original template file Formula/openllm.rb.j2
# vim: set ft=ruby:
class Openllm < Formula
  desc "OpenLLM: Operating LLMs in production"
  homepage "https://github.com/bentoml/OpenLLM"
  version "0.4.32"
  license "Apache-2.0"
  head "https://github.com/bentoml/OpenLLM, branch: main"
  url "https://github.com/bentoml/OpenLLM/archive/v0.4.32.tar.gz"
  sha256 "584644e85c19fa6b06696c17ce383e6e8c56cbae6ba4f3ad7317fee5682055b5"

  on_linux do
    url "https://github.com/bentoml/OpenLLM/releases/download/v0.4.32/openllm-0.4.32-x86_64-unknown-linux-musl.tar.gz"
    sha256 "d14f1204db8ca6dbf6a4a2883c59898168a20f8e238d5e024e3e0b2668df6cfe"
  end
  on_macos do
    on_arm do
      url "https://github.com/bentoml/OpenLLM/releases/download/v0.4.32/openllm-0.4.32-aarch64-apple-darwin.tar.gz"
      sha256 "ddc52ed201a9a9ef508b6a31d7ef14e0434c47fb4fa956c6659d9de38cd6d939"
    end
    on_intel do
      url "https://github.com/bentoml/OpenLLM/releases/download/v0.4.32/openllm-0.4.32-x86_64-apple-darwin.tar.gz"
      sha256 "4bf97189fdae93ffc2eb6e11ed3f8e57eb4c64d1f6224b0fae6e8dbc06ac51d4"
    end
  end

  def install
    on_linux do
      bin.install "openllm-0.4.32-x86_64-unknown-linux-musl" => "openllm"
    end
  on_macos do
    on_arm do
      bin.install "openllm-0.4.32-aarch64-apple-darwin" => "openllm"
    end
    on_intel do
      bin.install "openllm-0.4.32-x86_64-apple-darwin" => "openllm"
    end
  end
    ohai "To get started, run: 'openllm --help'"
    ohai "To see supported models, run: 'openllm models'"
  end

  test do
    shell_output "#{bin}/openllm --version"
  end
end
