class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.577.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.577.2/lightdash-cli-2.577.2-macos-arm64.tar.gz"
      sha256 "944fd3e9e4bb984762246e973b0b59b86cb3f647ca384c7e07b626772404837e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.577.2/lightdash-cli-2.577.2-macos-x64.tar.gz"
      sha256 "5f7d8c738f5bb6f13414d234ca6a88993ecf2462cd95af1935caa5ebde261d39"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.577.2/lightdash-cli-2.577.2-linux-x64.tar.gz"
    sha256 "58d3fccaa24fe5ec65a7bac62fdee65df95e0e1490d4065044765a9447e9cbb2"

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
