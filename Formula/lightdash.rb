class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2255.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2255.1/lightdash-cli-0.2255.1-macos-arm64.tar.gz"
      sha256 "d13dae45bdd1d59a7067c81ad176aeafad692b88a7100a81b1fd13054348f7e2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2255.1/lightdash-cli-0.2255.1-macos-x64.tar.gz"
      sha256 "1f794fcf67398c33eeec68160ad0a16e0ad99b00980abf99ae5c065547913fac"
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
