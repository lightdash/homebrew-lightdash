class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3075.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3075.2/lightdash-cli-0.3075.2-macos-arm64.tar.gz"
      sha256 "63bf693cf4362c166bcf978d86adb92d5b4448b63c12164fb7d913c0ef3b5730"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3075.2/lightdash-cli-0.3075.2-macos-x64.tar.gz"
      sha256 "baeafef9c77a886bc2181447c41b156a7955f5fabf8253c9291b2a17cddf7155"
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
