class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3331.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3331.0/lightdash-cli-0.3331.0-macos-arm64.tar.gz"
      sha256 "d6781405d7eed13cb4eb7c4b6faf561f711b31831536432b81b4bec21db45819"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3331.0/lightdash-cli-0.3331.0-macos-x64.tar.gz"
      sha256 "082faf8dbfc2db76215a6c9b0767cfa695bc84560434c392910b3ce19373e1b3"
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
