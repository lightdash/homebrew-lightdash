class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2550.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2550.0/lightdash-cli-0.2550.0-macos-arm64.tar.gz"
      sha256 "ae10e8e2ecdb6ad1f98d33f6b6dd4e1fa42fe9ec1cb6bef435961dbfbc6c2fe9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2550.0/lightdash-cli-0.2550.0-macos-x64.tar.gz"
      sha256 "d7b185ec76ed219584fd656af715d71412c4464fdc8d69645f4a3f82a23f9e46"
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
