class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3364.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3364.1/lightdash-cli-0.3364.1-macos-arm64.tar.gz"
      sha256 "4b1cc70e83e4712cf5d19dab9e94561063b0154d84a04dfe3b2f7916a34511ec"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3364.1/lightdash-cli-0.3364.1-macos-x64.tar.gz"
      sha256 "745a0651f324351274a70bb1f3e22009c6dd5c041aac03f5ae53337f4961bb7c"
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
