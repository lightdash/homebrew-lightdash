class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.315.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.315.0/lightdash-cli-3.315.0-macos-arm64.tar.gz"
      sha256 "0f92ec513197abc1c13fc48a3b6532acf7b47a440039720b91ea7ed5055df4bb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.315.0/lightdash-cli-3.315.0-macos-x64.tar.gz"
      sha256 "5d3b7b87f6e58849a96676e4d811db2d6ec7ae73178894f2879aaa24ee88210d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.315.0/lightdash-cli-3.315.0-linux-x64.tar.gz"
    sha256 "414823b32ad08168b3da8c7dad530a26cad197f75a01b7e5eea790e9bdbfec2a"

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
