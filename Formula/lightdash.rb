class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.184.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.184.3/lightdash-cli-2.184.3-macos-arm64.tar.gz"
      sha256 "c529c640c2260d94aa5f3be8bb753875ad95e5e42442651b261b1cf830fed9bd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.184.3/lightdash-cli-2.184.3-macos-x64.tar.gz"
      sha256 "375af8c35025a74b367cc9024ac848194318199ac6bdbc8be4926fa366a700be"
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
