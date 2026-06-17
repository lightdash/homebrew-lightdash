class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3186.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3186.0/lightdash-cli-0.3186.0-macos-arm64.tar.gz"
      sha256 "829315f6d6c0f5f14ab144af4b810cb76c4cc8910fce3641ebd020810024166f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3186.0/lightdash-cli-0.3186.0-macos-x64.tar.gz"
      sha256 "626ad491f5606a6ae511bf9f53e1dde11dc930c4bb6df2d0846c1c87f807e1ea"
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
