class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.590.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.590.0/lightdash-cli-2.590.0-macos-arm64.tar.gz"
      sha256 "bc00b6255cff9046dfd888c622730c3a33cc51cd60865cd28eb6f339a1bafb47"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.590.0/lightdash-cli-2.590.0-macos-x64.tar.gz"
      sha256 "81c11fe2c60129b713ccb9fab80c623a62c51d8ed200948cd7e83e623503b94b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.590.0/lightdash-cli-2.590.0-linux-x64.tar.gz"
    sha256 "558200092dc5c24701f8ce0d896fccf69c4dae6020250a3f32e2a6f44ae7695d"

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
