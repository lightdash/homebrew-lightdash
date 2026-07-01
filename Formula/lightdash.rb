class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3273.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3273.0/lightdash-cli-0.3273.0-macos-arm64.tar.gz"
      sha256 "3358c4a39afa0d5dfc58cdd6f018d8e00f79ed29eba1506cea2efe3e0291ef0a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3273.0/lightdash-cli-0.3273.0-macos-x64.tar.gz"
      sha256 "f93899b8d8aeba493501e41d084cb3e2ac6605ea3388f653b95bb9fcdbb786d5"
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
