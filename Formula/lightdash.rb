class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2884.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2884.3/lightdash-cli-0.2884.3-macos-arm64.tar.gz"
      sha256 "347d96abbd750f734f1663557e76535c0a287f56f5d61c97a2c40e236c178e64"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2884.3/lightdash-cli-0.2884.3-macos-x64.tar.gz"
      sha256 "fcb12bf82c5ac85181ffd478e08bebc2ce97ed98b80423436f9bf1f5d5fc098d"
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
