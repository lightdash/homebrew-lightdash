class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.148.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.148.2/lightdash-cli-3.148.2-macos-arm64.tar.gz"
      sha256 "5a7cee1b69333e9dbc1c7367a5471bc3f19e996d370ae733e42edfbce372dfe9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.148.2/lightdash-cli-3.148.2-macos-x64.tar.gz"
      sha256 "093b4d4d469ec40f8298b8619bf137075901a771c54b8270f4f7aa73725f820b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.148.2/lightdash-cli-3.148.2-linux-x64.tar.gz"
    sha256 "31976abfaeeff87594348035e7a161b1f23f56919ed42c9f5d9966c3af282a5c"

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
