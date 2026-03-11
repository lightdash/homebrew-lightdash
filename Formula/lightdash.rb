class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2603.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2603.1/lightdash-cli-0.2603.1-macos-arm64.tar.gz"
      sha256 "781f549887d545eebe89d1a437570d48da7c4a7ffbd632564ca37a96448efc6c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2603.1/lightdash-cli-0.2603.1-macos-x64.tar.gz"
      sha256 "7618296dcd52ce64d3cd28c4eb2213a2b6eb68e9776d0c7dbb6724580084f94d"
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
