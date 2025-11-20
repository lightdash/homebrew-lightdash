class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2191.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2191.0/lightdash-cli-0.2191.0-macos-arm64.tar.gz"
      sha256 "8d332d8e368a58dd8073d40c01ee8f6154cd2cd8ca86fc8106b4b543088bd01f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2191.0/lightdash-cli-0.2191.0-macos-x64.tar.gz"
      sha256 "ff2faaf7098b276566ff094a8041b3534bed3ed39907f7e93ff350867996191e"
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
