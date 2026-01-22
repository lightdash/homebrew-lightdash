class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2365.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2365.3/lightdash-cli-0.2365.3-macos-arm64.tar.gz"
      sha256 "45590a9787fc1da0bd639401d9eabdc79c66b2025b8df67d5409ea93f711de00"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2365.3/lightdash-cli-0.2365.3-macos-x64.tar.gz"
      sha256 "8fec63abdfb810e93dfed4ba12954883ba6c4ad4cb1f23a562ee2e09280950c1"
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
