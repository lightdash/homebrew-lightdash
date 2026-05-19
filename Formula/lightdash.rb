class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2981.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2981.2/lightdash-cli-0.2981.2-macos-arm64.tar.gz"
      sha256 "354c38f92247c8caa8177e2428afd00f553339fbd709b56f6508188191dc43ae"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2981.2/lightdash-cli-0.2981.2-macos-x64.tar.gz"
      sha256 "e858a8cf2720e1808d226a55b6f97c3a9e722c35fbb93960138378ef72bae505"
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
