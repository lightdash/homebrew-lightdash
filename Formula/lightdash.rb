class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2749.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2749.0/lightdash-cli-0.2749.0-macos-arm64.tar.gz"
      sha256 "29cb7b2623a2c1d61abab255e0321acf455901e0b1109b308e1e73b626b19d0a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2749.0/lightdash-cli-0.2749.0-macos-x64.tar.gz"
      sha256 "5921c27c67628b3794cb8dad530a9ebfdfc0bc8a7dc12d9018413cf23e832a8b"
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
