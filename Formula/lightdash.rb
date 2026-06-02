class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3074.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3074.0/lightdash-cli-0.3074.0-macos-arm64.tar.gz"
      sha256 "c60817d86cae091e3ba5b99adc40b230e7d925d47fba3e8d1ecd2ec7dbbfbc86"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3074.0/lightdash-cli-0.3074.0-macos-x64.tar.gz"
      sha256 "0685e4eb9b29f3d1509e9b06946c96c34d7888dd92ebb8feef84d314576db410"
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
