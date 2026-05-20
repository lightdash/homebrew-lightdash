class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2987.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2987.0/lightdash-cli-0.2987.0-macos-arm64.tar.gz"
      sha256 "e89438fe034175a91a509c4fef85aaf8656ddee3d8e2112d3c2847564052cc38"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2987.0/lightdash-cli-0.2987.0-macos-x64.tar.gz"
      sha256 "ac903badc5efa10e11ed69538d90ba1c09986ad60947460dccdbbf0e87ec415d"
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
