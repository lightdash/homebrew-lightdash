class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.155.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.155.1/lightdash-cli-2.155.1-macos-arm64.tar.gz"
      sha256 "60a0a841fa1f97a4da1f0aaec3d0db750d8e94dc24e43a1b0dc2f0ffd301298b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.155.1/lightdash-cli-2.155.1-macos-x64.tar.gz"
      sha256 "d802cdb84407149fb052aff2215239fbd9fa1c70fb12500028a9d972955c5abe"
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
