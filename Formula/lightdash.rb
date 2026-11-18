class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.304.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.304.0/lightdash-cli-3.304.0-macos-arm64.tar.gz"
      sha256 "59a8c69dcc1e2760db9733799d8a08e74eb96beeb2cba13523bdb389a8795b4b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.304.0/lightdash-cli-3.304.0-macos-x64.tar.gz"
      sha256 "e5fe58eefa64f23ae77eb9b32d30b229d1257f2f5a103d0bc9ad462f61d5d75e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.304.0/lightdash-cli-3.304.0-linux-x64.tar.gz"
    sha256 "71a12277f465d27020b85de5f8e652a7aeee430fba116c522057137cf5a05074"

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
