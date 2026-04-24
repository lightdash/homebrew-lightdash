class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2806.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2806.0/lightdash-cli-0.2806.0-macos-arm64.tar.gz"
      sha256 "c49eb8d5c11802839406e0f4f03d86ca7c8fb89fb4de23cd40de2e6ff9899770"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2806.0/lightdash-cli-0.2806.0-macos-x64.tar.gz"
      sha256 "8e13207288dac25903010da6fb5d6b2fe61a6f22853d4631a082ef56d63242fa"
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
