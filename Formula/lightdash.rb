class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.211.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.211.1/lightdash-cli-2.211.1-macos-arm64.tar.gz"
      sha256 "9c39339e3706f268fba63682d544938754f6497745740adbf244a24cc3ad0342"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.211.1/lightdash-cli-2.211.1-macos-x64.tar.gz"
      sha256 "5642a9ceb5d7467e301a816cbb8943fc68b6ef7ff3bea7281768c7fb58ee5868"
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
