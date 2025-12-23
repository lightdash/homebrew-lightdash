class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2275.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2275.0/lightdash-cli-0.2275.0-macos-arm64.tar.gz"
      sha256 "dc961ce85fed2751a0e23e7744671f5d35be33515ee612e197666579e1fd4184"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2275.0/lightdash-cli-0.2275.0-macos-x64.tar.gz"
      sha256 "533181ce130aa34e52caf80544a0ab25095eb228c2600bc5a71cac3c28ea08d3"
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
