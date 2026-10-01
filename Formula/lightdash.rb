class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.405.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.405.5/lightdash-cli-2.405.5-macos-arm64.tar.gz"
      sha256 "915ad5d099dfdf267f04e5293f1281af1e8404295dcb5caf49c7dad8dcd6de1a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.405.5/lightdash-cli-2.405.5-macos-x64.tar.gz"
      sha256 "448851e0a4a1aad0c1021e313a6990375d0ad0d98d36ef2ca7826d409d013147"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.405.5/lightdash-cli-2.405.5-linux-x64.tar.gz"
    sha256 "cf008b97d75e90fedeeea622e79fca7e698ca0348653f9cca8d3c327c0971e6d"

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
