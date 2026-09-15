class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.221.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.221.2/lightdash-cli-2.221.2-macos-arm64.tar.gz"
      sha256 "bb5ec3566042cfdaa7ed76f7d449967d8d34fd3d4e4b0017702b8194de830a7d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.221.2/lightdash-cli-2.221.2-macos-x64.tar.gz"
      sha256 "4c09992cd5ee73210c4d32642075686a2178a2f5068f6bfc11e2f614faf3aae9"
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
