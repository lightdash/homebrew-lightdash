class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2342.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2342.1/lightdash-cli-0.2342.1-macos-arm64.tar.gz"
      sha256 "d46f8c9ff39caef6b94a5eea524420c15002ece59d88696412bae5d3a3fa1a83"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2342.1/lightdash-cli-0.2342.1-macos-x64.tar.gz"
      sha256 "e5f6339f608110402e5e77a85f82df175267c2f4664d20a95bd19df86b71e8be"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
