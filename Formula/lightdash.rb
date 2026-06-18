class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3191.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3191.1/lightdash-cli-0.3191.1-macos-arm64.tar.gz"
      sha256 "23c7eea8570f839d8cd03ee715707939ace22e5026b8a3bd9b3f2cdab5d46f25"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3191.1/lightdash-cli-0.3191.1-macos-x64.tar.gz"
      sha256 "db8331216715966ec54270cb2da7951f0e535eb8144a87833706d3eae3c185fa"
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
