class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2770.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2770.1/lightdash-cli-0.2770.1-macos-arm64.tar.gz"
      sha256 "c968f452399db5fb22f0b72cfc81b8ce8141fa7bb493e7bcf6245aeb75ea3c61"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2770.1/lightdash-cli-0.2770.1-macos-x64.tar.gz"
      sha256 "68f2cbd5e45155afc6b6bc1efe2891b3c5700de00c59b2fb7eb0c34e9798be5a"
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
