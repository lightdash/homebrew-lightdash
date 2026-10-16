class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.600.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.600.1/lightdash-cli-2.600.1-macos-arm64.tar.gz"
      sha256 "e8dea291f28b7729c3a7f4c591ca8cec3dc9be700aba48d912368ec5536b6003"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.600.1/lightdash-cli-2.600.1-macos-x64.tar.gz"
      sha256 "d5b93b94f07808349e2bbbfe2e0f3d3a65fd915b9da36214c1eb68ce92fa5ddc"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.600.1/lightdash-cli-2.600.1-linux-x64.tar.gz"
    sha256 "e13626094736a9f7f694f64d91ad8dffc9f2ea9129956fd5fb4b5c444fe2b0d7"

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
