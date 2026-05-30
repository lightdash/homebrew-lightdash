class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3058.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3058.1/lightdash-cli-0.3058.1-macos-arm64.tar.gz"
      sha256 "c38baf224c6966452f4ac6d927b3638ee4fc4c8d6960fd769972a45066d80134"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3058.1/lightdash-cli-0.3058.1-macos-x64.tar.gz"
      sha256 "e8a294683f9e559826d9abdffa342658d19aa0ed88566a5c3231cd74d47ee5bd"
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
