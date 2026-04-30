class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2851.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2851.1/lightdash-cli-0.2851.1-macos-arm64.tar.gz"
      sha256 "015cc34742dfdced4982910e25f38cc5a0167779ccf639b0f3dc81b278313547"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2851.1/lightdash-cli-0.2851.1-macos-x64.tar.gz"
      sha256 "99ec1fcbf98b0b36666ba902a2b43f8014861ee7d01e02b1320b6e6208273991"
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
