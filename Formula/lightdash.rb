class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2297.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2297.0/lightdash-cli-0.2297.0-macos-arm64.tar.gz"
      sha256 "ed2c4cb8921ef4c035861b0947b9fabd3dd019c76d72fca0751baaa21c6e16e1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2297.0/lightdash-cli-0.2297.0-macos-x64.tar.gz"
      sha256 "f4ca083222c61790022f247b7478cc71aff95bdb10290d20db29262f41f35bd7"
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
