class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.93.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.93.5/lightdash-cli-3.93.5-macos-arm64.tar.gz"
      sha256 "896b5dcb49d9dac3964294976ed385d3d4652862608479ff9fa967b335ad4502"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.93.5/lightdash-cli-3.93.5-macos-x64.tar.gz"
      sha256 "b8b9723a96ade74c2dde030684075cf7714dc18b88f97d1542c442a68ee3862b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.93.5/lightdash-cli-3.93.5-linux-x64.tar.gz"
    sha256 "83ba6c939d0f47bf3926e41749c98e6d7926734f408f5b94211562f810b55465"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
