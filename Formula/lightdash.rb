class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2886.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2886.0/lightdash-cli-0.2886.0-macos-arm64.tar.gz"
      sha256 "1e5948b3c969b1ed923845ad2cb103d8dfa63030395da55085c81bc469cddabe"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2886.0/lightdash-cli-0.2886.0-macos-x64.tar.gz"
      sha256 "840ee464567395f66205166cfcef9b200fdb76e3a93b837f6425992d36713121"
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
