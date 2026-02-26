class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2530.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2530.0/lightdash-cli-0.2530.0-macos-arm64.tar.gz"
      sha256 "eab99429290d9e46686670f97a04c6c191933a933ac5fadcad7b496eb0592594"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2530.0/lightdash-cli-0.2530.0-macos-x64.tar.gz"
      sha256 "f8b8b31a061fb9b8f38312e638caf72a8fa4f178a36ff3f97e5a0d01c4eeedc4"
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
