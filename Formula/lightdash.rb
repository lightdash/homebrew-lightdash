class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3110.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3110.1/lightdash-cli-0.3110.1-macos-arm64.tar.gz"
      sha256 "03dcf5c4166aa7eb8ba089a62555109075f449633da6e625dd0001cadb13ea50"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3110.1/lightdash-cli-0.3110.1-macos-x64.tar.gz"
      sha256 "bf3d8e709dec03115c1f3adb588c37363146a83ee31484f05038c8df8c2c3f0c"
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
