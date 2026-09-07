class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.135.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.135.1/lightdash-cli-2.135.1-macos-arm64.tar.gz"
      sha256 "d9b1f30c676c5cbdeb08106a571c47977683c744a048c4c153b060793f0832c1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.135.1/lightdash-cli-2.135.1-macos-x64.tar.gz"
      sha256 "1f6990689614582592bfa6dc1898c5c61340bcdb447852a46909d0cc42bc05cd"
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
