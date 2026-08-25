class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.259.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.259.0/lightdash-cli-1.259.0-macos-arm64.tar.gz"
      sha256 "a0a3bbae7d86451010f3a350ae354aa5538c99cfc7a9ef23d56400cfd09231b4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.259.0/lightdash-cli-1.259.0-macos-x64.tar.gz"
      sha256 "0445ef10971e36e19043e4ed47f78eada0e4c24e13706cc2014e96bdd650d699"
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
