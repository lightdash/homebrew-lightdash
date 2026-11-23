class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.378.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.378.0/lightdash-cli-3.378.0-macos-arm64.tar.gz"
      sha256 "f187db867953dbc7626a2cff65646ff25401aa9fe5445629f0d1f00cec162a39"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.378.0/lightdash-cli-3.378.0-macos-x64.tar.gz"
      sha256 "ff53f66b75a868c0ff01eccce4b1a6b1fd49d01a2ae43dc5ec038d50b9cb5965"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.378.0/lightdash-cli-3.378.0-linux-x64.tar.gz"
    sha256 "4b392ac3823d93e5a4b4d15541f1a5b5bc0563c117e9fd4a248533176dd705ae"

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
