class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2189.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2189.2/lightdash-cli-0.2189.2-macos-arm64.tar.gz"
      sha256 "805c7865ed255a15ee712589da31b85af8f7d40604d7cbc4e19c9c83d11f3f0e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2189.2/lightdash-cli-0.2189.2-macos-x64.tar.gz"
      sha256 "71932247a0315ec75242aa117328c9b72805eaae008bc2a9d37c7d568d08de4f"
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
