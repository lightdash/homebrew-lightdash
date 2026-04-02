class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2709.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2709.7/lightdash-cli-0.2709.7-macos-arm64.tar.gz"
      sha256 "b9cb76c110748d47d030c91bc62fc8280f7774b5b16270d5cfd64a46774ece6f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2709.7/lightdash-cli-0.2709.7-macos-x64.tar.gz"
      sha256 "52199d74e41243408eb54149c80894659398bdb949abcdd060894485045d8585"
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
