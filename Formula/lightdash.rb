class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.342.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.342.3/lightdash-cli-2.342.3-macos-arm64.tar.gz"
      sha256 "c465bc696af472ebc028a744a098075670a3872dad2fd83cd6cffb09f5479262"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.342.3/lightdash-cli-2.342.3-macos-x64.tar.gz"
      sha256 "99221bb7ef0943a8f0ea293b7ba2c4629d7cd613920bf00eda01be5dec88591c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.342.3/lightdash-cli-2.342.3-linux-x64.tar.gz"
    sha256 "f75e3ada129dda5a7db08b1af0d2962220c51f92dc53ae2769a41937c71a27e9"

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
