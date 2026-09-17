class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.256.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.256.0/lightdash-cli-2.256.0-macos-arm64.tar.gz"
      sha256 "86961d8ff47f180349e6d08cbfa17443eb0127dc7d7a05dd685472fd4a28aceb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.256.0/lightdash-cli-2.256.0-macos-x64.tar.gz"
      sha256 "60ef68bf1e1c9653642b8d5ebc2362fa9171ea69c56f03fe1037199d31eac080"
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
