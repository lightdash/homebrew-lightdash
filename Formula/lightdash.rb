class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2315.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2315.1/lightdash-cli-0.2315.1-macos-arm64.tar.gz"
      sha256 "14b1486909c4e36832254f24c9825bd758832306629cab13479dd121df9a4759"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2315.1/lightdash-cli-0.2315.1-macos-x64.tar.gz"
      sha256 "0a344b6cfcb68b666389452d44246cb31a2c9cffd92bf584f835a450801978f1"
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
