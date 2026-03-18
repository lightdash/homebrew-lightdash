class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2638.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2638.0/lightdash-cli-0.2638.0-macos-arm64.tar.gz"
      sha256 "c2198c5b2f33e0e8a0ac635075111a2bc67c28b792101eb1d938494733347ac8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2638.0/lightdash-cli-0.2638.0-macos-x64.tar.gz"
      sha256 "e5860e5de155053332cb09ee2ce4207ad69c5b59c24bb788fb80c15e1c95dd33"
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
